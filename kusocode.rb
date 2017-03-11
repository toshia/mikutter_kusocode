# -*- coding: utf-8 -*-

Plugin.create(:kusocode) do
  command(:kusocode_yaruki,
          name: 'やる気がない',
          condition: lambda{ |opt| opt.messages.all?(&:repliable?) },
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: <<"KUSOREPLY")
@#{message.user.idname}
public final class Yaruki {
  public Yaruki() throws NullPointerException {
    throw new NullPointerException("ぬるぽ");
  }
}
KUSOREPLY
    }
  end

  command(:kusocode_yakiniku,
          name: '焼き肉おごれや',
          condition: lambda{ |opt| opt.messages.all?(&:repliable?) },
          visible: true,
          role: :timeline) do |opt|
    message.post(message: "today.setDinner(@#{message.user.idname}.getMoney().toYakiniku(Yakiniku.JOJO_EN));")
  end
end
