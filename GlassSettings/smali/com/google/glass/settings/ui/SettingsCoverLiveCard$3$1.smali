.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

.field final synthetic val$btInfo:Landroid/net/NetworkInfo;

.field final synthetic val$isConnected:Z

.field final synthetic val$proxyInfo:Landroid/net/NetworkInfo;

.field final synthetic val$wifiInfo:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iput-object p2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$wifiInfo:Landroid/net/NetworkInfo;

    iput-object p3, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$btInfo:Landroid/net/NetworkInfo;

    iput-object p4, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$proxyInfo:Landroid/net/NetworkInfo;

    iput-boolean p5, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 190
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    sget v10, Lcom/google/glass/settings/ui/R$id;->data_connection_image:I

    invoke-virtual {v9, v10}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    .local v1, "dataConnectionImage":Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_cloud_off_150:I

    .line 192
    .local v2, "dataConnectionImageRes":I
    const/4 v0, 0x0

    .line 193
    .local v0, "currentlyConnectedName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$wifiInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$wifiInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 194
    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_cloud_wifi_150:I

    .line 195
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->val$context:Landroid/content/Context;

    sget v10, Lcom/google/glass/settings/ui/R$string;->wifi:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    sget v10, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {v9, v10}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, "dataConnectionText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    sget v10, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {v9, v10}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 208
    .local v6, "extraInfo":Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    if-eqz v0, :cond_6

    .line 210
    sget v5, Lcom/google/glass/settings/ui/R$string;->settings_cover_connection_issue:I

    .line 211
    .local v5, "dataConnectionTextRes":I
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v9}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$600(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I

    move-result v4

    .line 212
    .local v4, "dataConnectionTextColor":I
    iget-boolean v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$isConnected:Z

    if-eqz v9, :cond_5

    .line 213
    sget v5, Lcom/google/glass/settings/ui/R$string;->settings_cover_connection_data:I

    .line 214
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v9}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$700(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I

    move-result v4

    .line 219
    :goto_1
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->val$context:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .end local v4    # "dataConnectionTextColor":I
    .end local v5    # "dataConnectionTextRes":I
    .end local v8    # "text":Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v9}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->invalidate()V

    .line 233
    return-void

    .line 196
    .end local v3    # "dataConnectionText":Landroid/widget/TextView;
    .end local v6    # "extraInfo":Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$btInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$btInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$proxyInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->val$proxyInfo:Landroid/net/NetworkInfo;

    .line 197
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 198
    :cond_3
    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_cloud_bluetooth_150:I

    .line 199
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->val$context:Landroid/content/Context;

    sget v10, Lcom/google/glass/settings/ui/R$string;->bluetooth:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_4
    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_cloud_off_150:I

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    .restart local v3    # "dataConnectionText":Landroid/widget/TextView;
    .restart local v4    # "dataConnectionTextColor":I
    .restart local v5    # "dataConnectionTextRes":I
    .restart local v6    # "extraInfo":Landroid/widget/TextView;
    :cond_5
    sget v5, Lcom/google/glass/settings/ui/R$string;->settings_cover_connection_issue:I

    .line 217
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v9}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$600(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I

    move-result v4

    goto :goto_1

    .line 223
    .end local v4    # "dataConnectionTextColor":I
    .end local v5    # "dataConnectionTextRes":I
    :cond_6
    sget v9, Lcom/google/glass/settings/ui/R$string;->settings_cover_connection_no_data:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v9, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    iget-object v9, v9, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v9}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$800(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 227
    .local v7, "proxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v7}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 228
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    sget v9, Lcom/google/glass/settings/ui/R$string;->settings_cover_check_my_glass:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
