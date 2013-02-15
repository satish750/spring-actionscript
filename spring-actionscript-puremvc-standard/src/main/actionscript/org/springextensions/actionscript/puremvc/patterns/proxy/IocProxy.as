/*
 * Copyright 2007-2008 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springextensions.actionscript.puremvc.patterns.proxy {
  import org.springextensions.actionscript.puremvc.interfaces.IIocFacade;
  import org.springextensions.actionscript.puremvc.interfaces.IIocProxy;
  import org.puremvc.as3.patterns.proxy.Proxy;

  /**
   * Description wannabe.
   *
   * <p>
   * <b>Author:</b> Damir Murat<br/>
   * <b>Version:</b> $Revision: 17 $, $Date: 2008-11-01 20:07:07 +0100 (za, 01 nov 2008) $, $Author: dmurat $<br/>
   * <b>Since:</b> 0.4
   * </p>
   */
  public class IocProxy extends Proxy implements IIocProxy {
    private var m_configName:String;

    public function IocProxy(p_proxyName:String = null, p_data:Object = null) {
      super(p_proxyName, p_data);
    }

    protected function get iocFacade():IIocFacade {
      return facade as IIocFacade;
    }

    public function getConfigName():String {
      return m_configName;
    }

    public function setConfigName(p_configName:String):void {
      m_configName = p_configName;
    }

    public function setProxyName(p_proxyName:String):void {
      proxyName = p_proxyName;
    }
  }
}