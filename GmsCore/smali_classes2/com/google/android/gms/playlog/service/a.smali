.class final Lcom/google/android/gms/playlog/service/a;
.super Lcom/google/android/gms/playlog/internal/b;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/playlog/b/f;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/playlog/b/f;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/b;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/gms/playlog/service/a;->a:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/playlog/service/a;->b:Lcom/google/android/gms/playlog/b/f;

    .line 122
    sget-object v0, Lcom/google/android/gms/playlog/a/c;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/service/a;->c:Z

    .line 123
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/service/a;->c:Z

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "PlayLogBrokerService"

    const-string v1, "--> success, request upload asap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->c()V

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/service/a;->c:Z

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "PlayLogBrokerService"

    const-string v1, "--> success, request upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->b()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 4

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/service/a;->c:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/playlog/internal/LogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "PlayLogBrokerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-static {p1}, Lcom/google/android/gms/playlog/service/c;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Lcom/google/android/gms/playlog/b/h;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/playlog/b/f;->a(Lcom/google/android/gms/playlog/b/h;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "PlayLogBrokerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--> failed to write: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/playlog/service/a;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/playlog/service/a;->a()V

    .line 133
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 156
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    .line 157
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/playlog/service/a;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/playlog/service/a;->a()V

    .line 160
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V
    .locals 4

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/service/a;->c:Z

    if-eqz v0, :cond_0

    .line 174
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

    .line 175
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

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-static {p2}, Lcom/google/android/gms/playlog/service/c;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Lcom/google/android/gms/playlog/b/h;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/playlog/b/f;->a(Lcom/google/android/gms/playlog/b/h;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    invoke-direct {p0}, Lcom/google/android/gms/playlog/service/a;->a()V

    .line 186
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "PlayLogBrokerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--> failed to write proto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
