.class final Lcom/google/android/location/reporting/v;
.super Lcom/google/android/gms/common/server/g;
.source "SourceFile"


# instance fields
.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 716
    sget-object v0, Lcom/google/android/location/reporting/service/y;->D:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/location/reporting/service/y;->E:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 723
    iput-object p1, p0, Lcom/google/android/location/reporting/v;->f:Landroid/content/Context;

    .line 724
    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/d/p;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/android/d/p;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/reports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    sget-object v0, Lcom/google/android/location/reporting/service/y;->G:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 730
    sget-object v0, Lcom/google/android/location/reporting/service/y;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 731
    sget-object v0, Lcom/google/android/location/reporting/service/y;->H:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    .line 732
    const-string v0, "GCoreUlr"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Setting "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " retries every "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ms (backoff="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/server/b;

    iget-object v1, p0, Lcom/google/android/location/reporting/v;->f:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/server/b;-><init>(Landroid/content/Context;Ljava/lang/String;IIF)V

    .line 738
    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(Lcom/android/d/x;)Lcom/android/d/p;

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/server/g;->a(Lcom/android/d/p;Ljava/lang/String;)V

    goto :goto_0
.end method
