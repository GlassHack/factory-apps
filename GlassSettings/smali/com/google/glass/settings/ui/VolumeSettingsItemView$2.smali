.class Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;
.super Landroid/os/AsyncTask;
.source "VolumeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/VolumeSettingsItemView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$400(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/android/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "volume"    # Ljava/lang/Integer;

    .prologue
    .line 116
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$400(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/glass/android/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 118
    .local v0, "maxVolume":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Lcom/google/glass/sound/VolumeUtils;->getVolumePercent(II)I

    move-result v1

    .line 119
    .local v1, "percent":I
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$500(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$600(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_volume_0_150:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$500(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->volume_muted:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$500(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$500(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Lcom/google/glass/sound/VolumeUtils;->isHighVolumeRatio(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$600(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_volume_2_150:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$600(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_volume_1_150:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
