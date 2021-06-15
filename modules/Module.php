<?php
namespace modules;

use yii\base\Event;
use yii\base\ActionEvent;

use Craft;

use Solspace\Freeform\Controllers\ApiController;

class Module extends \yii\base\Module
{
    public function init()
    {
        // Set a @modules alias pointed to the modules/ directory
        Craft::setAlias('@modules', __DIR__);

        // Set the controllerNamespace based on whether this is a console or web request
        if (Craft::$app->getRequest()->getIsConsoleRequest()) {
            $this->controllerNamespace = 'modules\\console\\controllers';
        } else {
            $this->controllerNamespace = 'modules\\controllers';
        }

        parent::init();

    // Allow submitting Freeform forms from any origin
    Event::on(
        ApiController::class,
        ApiController::EVENT_BEFORE_ACTION,
        function (ActionEvent $actionEvent) {
            if ($actionEvent->action->id == 'form') {
                Craft::$app->getResponse()->getHeaders()->set('Access-Control-Allow-Origin', '*');
                Craft::$app->getResponse()->getHeaders()->set('Access-Control-Allow-Headers', '*');
                if (Craft::$app->getRequest()->getIsOptions()) {
                    Craft::$app->getResponse()->setStatusCode(200);
                    Craft::$app->getResponse()->send();
                    exit;
                }
            }
        }
    );
    }
}
