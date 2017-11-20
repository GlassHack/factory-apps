.class public final Lcom/google/android/gms/subscribedfeeds/b;
.super Lcom/google/n/b/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/n/b/a/a;Lcom/google/n/b/a/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/n/b/a/c;-><init>(Lcom/google/n/b/a/a;Lcom/google/n/b/a/b;)V

    .line 33
    return-void
.end method

.method static a(Lcom/google/n/b/e/a/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/google/n/b/e/a/b;->b()Lcom/google/n/b/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/n/b/e/a/b;->b()Lcom/google/n/b/e/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/n/b/e/a/a;->a:Ljava/lang/String;

    .line 122
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/n/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_1
    return-object v0

    .line 120
    :cond_0
    const-string v0, "null feed url"

    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "null entry"

    goto :goto_1
.end method
