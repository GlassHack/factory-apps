.class Lcom/google/glass/babel/AudioMessageHelper$4;
.super Ljava/lang/Object;
.source "AudioMessageHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/babel/AudioMessageHelper;->streamAudio(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/babel/AudioMessageHelper;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$4;->this$0:Lcom/google/glass/babel/AudioMessageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer info [what=%s, extra=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return v5
.end method
