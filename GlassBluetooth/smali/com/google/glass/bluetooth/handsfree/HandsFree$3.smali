.class Lcom/google/glass/bluetooth/handsfree/HandsFree$3;
.super Landroid/os/Handler;
.source "HandsFree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 147
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 148
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "No companion info from companion app"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseLocaleInfo()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    const/4 v5, 0x0

    .line 154
    .local v5, "updateSharedPrefs":Z
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLocaleInfo()Lcom/google/glass/companion/Proto$LocaleInfo;

    move-result-object v2

    .line 155
    .local v2, "localeInfo":Lcom/google/glass/companion/Proto$LocaleInfo;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocaleInfo;->getNetworkBasedCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "networkCountryIso":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 158
    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$702(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const/4 v5, 0x1

    .line 161
    :cond_3
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocaleInfo;->getSimBasedCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "simCountryIso":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 163
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 164
    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$802(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    const/4 v5, 0x1

    .line 167
    :cond_4
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Received phone country info from companion [network country: %s, sim country: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v10

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-eqz v5, :cond_1

    .line 171
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Updating shared preferences with new country info"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v6}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$900(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v6}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 174
    const-string v6, "phoneNetworkCountry"

    iget-object v7, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    :cond_5
    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v6}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 177
    const-string v6, "phoneSimCountry"

    iget-object v7, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v7}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method
