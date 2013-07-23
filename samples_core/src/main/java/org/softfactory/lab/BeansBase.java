package org.softfactory.lab;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public abstract class BeansBase implements InitializingBean, DisposableBean {

	/**
	 * To react once all properties have been set by a BeanFactory.
	 */
	protected abstract void initial();

	/**
	 * To release resources on destruction
	 */
	protected abstract void end();

	public final void afterPropertiesSet() throws Exception {
		initial();
	}

	public final void destroy() throws Exception {
		end();
	}
}
