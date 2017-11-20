.class public final Lcom/google/android/location/reporting/config/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/accounts/Account;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/Long;

.field final d:Z

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:I

.field final i:Ljava/lang/Boolean;

.field final j:Ljava/lang/Boolean;

.field final k:Ljava/lang/Long;

.field final l:Ljava/lang/Integer;

.field final m:Ljava/lang/Boolean;

.field final n:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/location/reporting/config/j;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->a:Landroid/accounts/Account;

    const-string v3, "account"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    .line 51
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    .line 52
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    .line 53
    iget-boolean v0, p1, Lcom/google/android/location/reporting/config/j;->d:Z

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/i;->d:Z

    .line 54
    iget-boolean v0, p1, Lcom/google/android/location/reporting/config/j;->e:Z

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/i;->e:Z

    .line 55
    iget-boolean v0, p1, Lcom/google/android/location/reporting/config/j;->f:Z

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/i;->f:Z

    .line 56
    iget-boolean v0, p1, Lcom/google/android/location/reporting/config/j;->g:Z

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/i;->g:Z

    .line 57
    iget v0, p1, Lcom/google/android/location/reporting/config/j;->h:I

    iput v0, p0, Lcom/google/android/location/reporting/config/i;->h:I

    .line 58
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    .line 60
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->k:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    .line 61
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    .line 62
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->m:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    .line 63
    iget-object v0, p1, Lcom/google/android/location/reporting/config/j;->n:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    .line 65
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/google/android/location/reporting/config/i;->h:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Bad mAmbiguity"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Bad mReportingEnabled"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 71
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    const-string v3, "Bad mHistoryEnabled"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    const-string v0, "Bad mDirty"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 75
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 68
    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    goto :goto_1

    :cond_3
    move v0, v2

    .line 71
    goto :goto_2

    :cond_4
    move v1, v2

    .line 73
    goto :goto_3
.end method

.method public static a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/location/reporting/config/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/reporting/config/j;-><init>(Landroid/accounts/Account;B)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/location/reporting/config/i;->h:I

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mAmbiguity in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/reporting/config/i;

    if-nez v2, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    check-cast p1, Lcom/google/android/location/reporting/config/i;

    .line 191
    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->d:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/i;->d:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->e:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/i;->e:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->f:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/i;->f:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->g:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/i;->g:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/reporting/config/i;->h:I

    iget v3, p1, Lcom/google/android/location/reporting/config/i;->h:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 210
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/i;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/location/reporting/config/i;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigUpdate{mAccount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefined="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReferenceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnconditional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/i;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUiUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/i;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldNotSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/i;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreservesVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/i;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbiguity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/config/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServerMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
