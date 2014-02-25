/*
Feathers
Copyright 2012-2014 Joshua Tynjala. All Rights Reserved.

This program is free software. You can redistribute and/or modify it in
accordance with the terms of the accompanying license agreement.
*/
package feathers.layout
{
	import starling.events.Event;
	import starling.events.EventDispatcher;

	/**
	 * @inheritDoc
	 */
	[Event(name="change",type="starling.events.Event")]

	/**
	 * Extra, optional data used by an <code>HorizontalLayout</code> instance to
	 * position and size a display object.
	 *
	 * @see http://wiki.starling-framework.org/feathers/horizontal-layout
	 * @see HorizontalLayout
	 * @see ILayoutDisplayObject
	 */
	public class HorizontalLayoutData extends EventDispatcher implements ILayoutData
	{
		/**
		 * Constructor.
		 */
		public function HorizontalLayoutData()
		{
		}

		/**
		 * @private
		 */
		protected var _percentWidth:Number = NaN;

		/**
		 * The width of the layout object, as a percentage of the container's
		 * width. The container will calculate the sum of all of its children
		 * with explicit pixel widths, and then the remaining space will be
		 * distributed to children with percent widths.
		 *
		 * <p>The <code>percentWidth</code> property is ignored when its value
		 * is <code>NaN</code> or when the <code>useVirtualLayout</code>
		 * property of the <code>HorizontalLayout</code> is set to
		 * <code>false</code>.</p>
		 *
		 * @default NaN
		 */
		public function get percentWidth():Number
		{
			return this._percentWidth;
		}

		/**
		 * @private
		 */
		public function set percentWidth(value:Number):void
		{
			if(this._percentWidth == value)
			{
				return;
			}
			this._percentWidth = value;
			this.dispatchEventWith(Event.CHANGE);
		}

		/**
		 * @private
		 */
		protected var _percentHeight:Number = NaN;


		/**
		 * The height of the layout object, as a percentage of the container's
		 * height.
		 *
		 * <p>If the value is <code>NaN</code>, this property is ignored.</p>
		 *
		 * @default NaN
		 */
		public function get percentHeight():Number
		{
			return this._percentHeight;
		}

		/**
		 * @private
		 */
		public function set percentHeight(value:Number):void
		{
			if(this._percentHeight == value)
			{
				return;
			}
			this._percentHeight = value;
			this.dispatchEventWith(Event.CHANGE);
		}
	}
}
