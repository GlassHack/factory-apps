.class Lcom/google/glass/util/TtsHelper$2;
.super Ljava/lang/Object;
.source "TtsHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    :pswitch_0
    return-void

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 185
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
