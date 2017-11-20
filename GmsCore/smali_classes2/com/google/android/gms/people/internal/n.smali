.class final Lcom/google/android/gms/people/internal/n;
.super Lcom/google/android/gms/people/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/people/internal/l;

.field private final b:Lcom/google/android/gms/people/s;


# virtual methods
.method public final a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 335
    const-string v0, "PeopleService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bundle callback: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nbundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    if-eqz p1, :cond_2

    .line 340
    const-string v0, "PeopleClient"

    const-string v1, "Non-success data changed callback received."

    const-string v2, "PeopleService"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v6, p0, Lcom/google/android/gms/people/internal/n;->a:Lcom/google/android/gms/people/internal/l;

    new-instance v0, Lcom/google/android/gms/people/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/people/internal/n;->a:Lcom/google/android/gms/people/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/people/internal/n;->b:Lcom/google/android/gms/people/s;

    const-string v3, "account"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pagegaiaid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scope"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/internal/m;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/people/s;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/people/internal/l;->b(Lcom/google/android/gms/common/internal/g;)V

    goto :goto_0
.end method
