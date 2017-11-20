.class public final Lcom/google/android/gms/clearcut/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/service/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/clearcut/a/f;

.field private final c:Lcom/google/android/gms/clearcut/LogEventParcelable;

.field private final d:Lcom/google/android/gms/playlog/b/f;

.field private final e:Lcom/google/android/gms/clearcut/service/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/playlog/b/f;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/gms/clearcut/service/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/clearcut/service/b;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/service/a;->e:Lcom/google/android/gms/clearcut/service/b;

    .line 106
    iput-object p1, p0, Lcom/google/android/gms/clearcut/service/a;->a:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/google/android/gms/clearcut/service/a;->b:Lcom/google/android/gms/clearcut/a/f;

    .line 108
    iput-object p3, p0, Lcom/google/android/gms/clearcut/service/a;->c:Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 109
    iput-object p4, p0, Lcom/google/android/gms/clearcut/service/a;->d:Lcom/google/android/gms/playlog/b/f;

    .line 110
    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/a;->d:Lcom/google/android/gms/playlog/b/f;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/service/a;->c:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v1}, Lcom/google/android/gms/playlog/service/c;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Lcom/google/android/gms/playlog/b/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/pseudonymous/service/a;

    iget-object v3, p0, Lcom/google/android/gms/clearcut/service/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/service/a;->e:Lcom/google/android/gms/clearcut/service/b;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/pseudonymous/service/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/service/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/pseudonymous/service/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/clearcut/service/a;->e:Lcom/google/android/gms/clearcut/service/b;

    invoke-virtual {v2}, Lcom/google/android/gms/clearcut/service/b;->a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/clearcut/service/a;->c:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v2, v2, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/playlog/b/f;->a(Lcom/google/android/gms/playlog/b/h;[B)V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/a;->d:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ClearcutLoggerIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not write to store: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/a;->b:Lcom/google/android/gms/clearcut/a/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/clearcut/a/f;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 127
    return-void
.end method
