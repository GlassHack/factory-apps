.class final Lcom/google/android/youtube/core/cache/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/f;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/youtube/core/cache/f;->b:J

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/f;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/youtube/core/cache/f;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/lang/String;J)V

    .line 164
    return-void
.end method
