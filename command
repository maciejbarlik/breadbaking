case 'weather.get':
 weather = await this.get(house);
 context.temperature = weather.temperature;
 context.units = weather.units === 'metric' ? '°C' : '°F';
 await this.messageManager.replyByIntent(message, `weather.get.success.${weather.weather}`, context);
