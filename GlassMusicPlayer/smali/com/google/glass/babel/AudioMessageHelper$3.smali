.class Lcom/google/glass/babel/AudioMessageHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$3;->this$0:Lcom/google/glass/babel/AudioMessageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer error [what=%s, extra=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return v5
.end method
