.class public final Lcom/google/android/gms/playlog/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public final b:Lcom/google/android/gms/playlog/internal/LogEvent;

.field public final c:Lcom/google/n/a/b/a/a/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/e;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/e;->b:Lcom/google/android/gms/playlog/internal/LogEvent;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/e;->c:Lcom/google/n/a/b/a/a/i;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/e;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method
