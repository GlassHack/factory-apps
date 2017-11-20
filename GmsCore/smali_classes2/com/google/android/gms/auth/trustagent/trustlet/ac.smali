.class final Lcom/google/android/gms/auth/trustagent/trustlet/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {p2}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Lcom/google/android/gms/auth/trustagent/trustlet/p;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Ljava/util/Set;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a([Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ab;Z)V

    .line 89
    const-string v0, "Coffee - PlaceTrustlet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSharedPreferenceChanged, addPlaceToTrustedPlaces: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ab;Z)V

    .line 94
    const-string v0, "Coffee - PlaceTrustlet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSharedPreferenceChanged, removePlaceFromTrustedPlaces: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
