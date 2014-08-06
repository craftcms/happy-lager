<?php
namespace Craft;

/**
 * Position Select field type
 */
class PositionSelectFieldType extends BaseFieldType
{
	/**
	 * Returns the component’s name.
	 *
	 * @return string
	 */
	public function getName()
	{
		return 'Position Select';
	}

	/**
	 * Returns the content attribute config.
	 *
	 * @return mixed
	 */
	public function defineContentAttribute()
	{
		return AttributeType::String;
	}

	/**
	 * Defines the settings.
	 *
	 * @return array
	 */
	protected function defineSettings()
	{
		return array(
			'options' => array(AttributeType::Mixed, 'default' => $this->_getOptions()),
		);
	}

	/**
	 * Returns the field's settings HTML.
	 *
	 * @return string|null
	 */
	public function getSettingsHtml()
	{
		craft()->templates->includeCssResource('positionselect/css/positionselect.css');

		return craft()->templates->render('positionselect/settings', array(
			'settings'   => $this->getSettings(),
			'allOptions' => $this->_getOptions(),
		));
	}

	/**
	 * Preps the settings before they're saved to the database.
	 *
	 * @param array $settings
	 * @return array
	 */
	public function prepSettings($settings)
	{
		$settings['options'] = array_keys(array_filter($settings['options']));
		return $settings;
	}

	/**
	 * Returns the field's input HTML.
	 *
	 * @param string $name
	 * @param mixed  $value
	 * @return string
	 */
	public function getInputHtml($name, $value)
	{
		craft()->templates->includeCssResource('positionselect/css/positionselect.css');
		craft()->templates->includeJsResource('positionselect/js/positionselect.js');

		$id = craft()->templates->formatInputId($name);
		craft()->templates->includeJs('new PositionSelect("'.craft()->templates->namespaceInputId($id).'");');

		$options = $this->getSettings()->options;

		if (!$value && $options)
		{
			$value = $options[0];
		}

		return craft()->templates->render('positionselect/input', array(
			'id'      => $id,
			'name'    => $name,
			'value'   => $value,
			'options' => $options,
		));
	}

	/**
	 * Returns the position options.
	 *
	 * @return array
	 */
	private function _getOptions()
	{
		return array('left', 'center', 'right', 'full', 'drop-left', 'drop-right');
	}
}
