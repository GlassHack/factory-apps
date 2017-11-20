.class Lcom/google/glass/babel/AudioMessageHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper;

.field final synthetic val$audioBytes:[B


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper;[B)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$1;->this$0:Lcom/google/glass/babel/AudioMessageHelper;

    iput-object p2, p0, Lcom/google/glass/babel/AudioMessageHelper$1;->val$audioBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/android/media/AudioTrackProvider;->getInstance()Lcom/google/glass/android/media/AudioTrackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/android/media/AudioTrackProvider;->get()Landroid/media/AudioTrack;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 170
    iget-object v1, p0, Lcom/google/glass/babel/AudioMessageHelper$1;->val$audioBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/babel/AudioMessageHelper$1;->val$audioBytes:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 171
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 172
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 173
    return-void
.end method
