.class Lcom/google/glass/bluetooth/handsfree/ScoConnection$2;
.super Ljava/lang/Object;
.source "ScoConnection.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ScoConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$2;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Audio focus released or lost."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
