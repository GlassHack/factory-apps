.class final Lcom/google/android/gms/playlog/service/a/b;
.super Lcom/google/android/gms/playlog/internal/b;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/playlog/b/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/playlog/b/a/f;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/b;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/gms/playlog/service/a/b;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/google/android/gms/playlog/service/a/b;->b:Lcom/google/android/gms/playlog/b/a/f;

    .line 89
    return-void
.end method

.method private static a(I)V
    .locals 2

    .prologue
    .line 92
    packed-switch p0, :pswitch_data_0

    .line 108
    const-string v0, "PlayLogBrokerService"

    const-string v1, "--> failed to write"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/playlog/service/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayLogBrokerService"

    const-string v1, "--> success, request regular upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->b()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/playlog/service/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PlayLogBrokerService"

    const-string v1, "--> success, request immediate upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->c()V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/google/android/gms/playlog/service/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/gms/playlog/internal/LogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a/b;->b:Lcom/google/android/gms/playlog/b/a/f;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/playlog/service/a/b;->a(I)V

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 131
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    .line 132
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/playlog/service/a/b;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/google/android/gms/playlog/service/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a/b;->b:Lcom/google/android/gms/playlog/b/a/f;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/playlog/service/a/b;->a(I)V

    .line 152
    return-void
.end method
