/*
 * Copyright 2007-2011 the original author or authors.
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
package org.springextensions.actionscript.core.task.xml.parser {
	import org.springextensions.actionscript.core.io.support.LoadPropertiesOperation;
	import org.springextensions.actionscript.core.task.xml.TaskNamespaceHandler;
	import org.springextensions.actionscript.ioc.IObjectDefinition;
	import org.springextensions.actionscript.ioc.factory.xml.parser.support.XMLObjectDefinitionsParser;

	public class LoadPropertiesNodeParser extends AbstractOperationNodeParser {

		public function LoadPropertiesNodeParser() {
			super();
		}

		override protected function parseInternal(node:XML, context:XMLObjectDefinitionsParser):IObjectDefinition {
			super.parseInternal(node, context);
			builder.addConstructorArgValue(LoadPropertiesOperation);
			builder.addConstructorArgValue(node.attribute(TaskNamespaceHandler.LOCATION_ATTR));
			builder.addConstructorArgValue(node.attribute(TaskNamespaceHandler.PREVENT_CACHE_ATTR) == "true");
			return builder.objectDefinition;
		}

	}
}