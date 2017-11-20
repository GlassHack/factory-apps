.class final Lcom/google/android/gms/auth/gsf/i;
.super Lcom/google/android/gsf/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/gsf/g;

.field private final b:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/gsf/g;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 644
    iput-object p1, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    invoke-direct {p0}, Lcom/google/android/gsf/j;-><init>()V

    .line 645
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    .line 646
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 734
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GsfLoginService] blockingGetCredentials for: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez p2, :cond_3

    .line 738
    const-string v2, "SID"

    .line 740
    :goto_0
    new-instance v7, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    invoke-direct {v7}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>()V

    .line 745
    if-nez p1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 764
    :goto_1
    invoke-virtual {v7, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->b(Ljava/lang/String;)V

    .line 766
    if-eqz v0, :cond_2

    .line 767
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {v7, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->a(Ljava/lang/String;)V

    move-object v0, v7

    .line 780
    :goto_2
    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 757
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in GLS.getAuthToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 762
    goto :goto_1

    .line 758
    :catch_1
    move-exception v0

    .line 759
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in GLS.getAuthToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 762
    goto :goto_1

    .line 760
    :catch_2
    move-exception v0

    .line 761
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in GLS.getAuthToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_1

    .line 773
    :cond_1
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 774
    if-eqz v0, :cond_2

    .line 775
    invoke-virtual {v7, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->a(Landroid/content/Intent;)V

    move-object v0, v7

    .line 776
    goto :goto_2

    .line 779
    :cond_2
    const-string v0, "GLSActivity"

    const-string v1, "Not bundle, token or intent returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 780
    goto :goto_2

    :cond_3
    move-object v2, p2

    goto/16 :goto_0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/g;->a(Landroid/accounts/AccountManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 789
    if-nez p1, :cond_0

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 657
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 659
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-object v2
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/g;->a(Landroid/accounts/AccountManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;)V

    .line 874
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 876
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 805
    sget-object v0, Lcom/google/android/gms/common/util/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .locals 4

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/i;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 811
    :goto_0
    return v0

    .line 810
    :cond_0
    const/4 v0, 0x0

    .line 811
    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 820
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 837
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 883
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->a:Lcom/google/android/gms/auth/gsf/g;

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/g;->a(Lcom/google/android/gms/auth/gsf/g;)V

    .line 886
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 888
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 889
    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/i;->b:Landroid/accounts/AccountManager;

    invoke-virtual {v4, v3, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
