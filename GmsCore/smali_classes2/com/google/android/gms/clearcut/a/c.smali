.class final Lcom/google/android/gms/clearcut/a/c;
.super Lcom/google/android/gms/clearcut/a/b;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/clearcut/a/b;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 124
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 117
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 4

    .prologue
    .line 117
    check-cast p1, Lcom/google/android/gms/clearcut/a/e;

    new-instance v0, Lcom/google/android/gms/clearcut/a/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/clearcut/a/d;-><init>(Lcom/google/android/gms/clearcut/a/c;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a/a;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/clearcut/a/e;->a(Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageNanoProducer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v3, v3, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 154
    instance-of v0, p1, Lcom/google/android/gms/clearcut/a/c;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    check-cast p1, Lcom/google/android/gms/clearcut/a/c;

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p1, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodImpl("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/a/c;->d:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
