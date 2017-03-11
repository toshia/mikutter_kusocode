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
end
