.class Lcom/google/glass/util/TtsHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 99
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$2;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 93
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
