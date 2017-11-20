.class final Lcom/google/android/location/reporting/service/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/accounts/Account;Lcom/google/android/gms/location/reporting/GmmSettings;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/i;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    .line 108
    iget-object v0, p2, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p2, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/GmmSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 112
    :goto_0
    iget-object v3, p2, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/GmmSettings;->c()Z

    move-result v4

    if-eq v3, v4, :cond_0

    move v2, v1

    .line 120
    :cond_0
    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p2, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 123
    invoke-static {p0}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/location/reporting/config/j;->a(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    iget-object v0, p2, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/android/location/reporting/config/j;->k:Ljava/lang/Long;

    iget v0, p2, Lcom/google/android/location/reporting/a;->d:I

    invoke-virtual {v2, v0}, Lcom/google/android/location/reporting/config/j;->a(I)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 110
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/GmmSettings;->c()Z

    move-result v0

    goto :goto_1
.end method
