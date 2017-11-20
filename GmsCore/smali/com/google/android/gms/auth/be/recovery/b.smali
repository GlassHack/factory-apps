.class public final Lcom/google/android/gms/auth/be/recovery/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Lcom/google/android/gms/auth/be/recovery/c;

.field e:Lcom/google/android/gms/auth/be/recovery/d;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/auth/be/recovery/b;
    .locals 5

    .prologue
    .line 36
    new-instance v1, Lcom/google/android/gms/auth/be/recovery/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/be/recovery/b;-><init>()V

    .line 37
    iput-object p0, v1, Lcom/google/android/gms/auth/be/recovery/b;->k:Ljava/lang/String;

    .line 38
    const-string v0, "r__error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v2, "Recovery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Error while updating recovery info: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r__error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "r__error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 46
    :cond_0
    :try_start_0
    const-string v0, "r_action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/recovery/c;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/c;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->d:Lcom/google/android/gms/auth/be/recovery/c;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const-string v0, "r_detail"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :try_start_1
    const-string v0, "r_detail"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/recovery/d;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/d;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->e:Lcom/google/android/gms/auth/be/recovery/d;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_1
    const-string v0, "r_recovery_interstitial_suggested"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string v0, "1"

    const-string v2, "r_recovery_interstitial_suggested"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->a:Z

    .line 74
    :cond_2
    const-string v0, "r_recovery_info_needed"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    const-string v0, "1"

    const-string v2, "r_recovery_info_needed"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->b:Z

    .line 79
    :cond_3
    const-string v0, "r_recovery_update_allowed"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "1"

    const-string v2, "r_recovery_update_allowed"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->c:Z

    .line 84
    :cond_4
    const-string v0, "r_secondaryEmail"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->f:Ljava/lang/String;

    .line 85
    const-string v0, "r_phone_number"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->g:Ljava/lang/String;

    .line 86
    const-string v0, "r_country_list"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->h:Ljava/lang/String;

    .line 87
    const-string v0, "r_country"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->i:Ljava/lang/String;

    move-object v0, v1

    .line 88
    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 48
    const-string v3, "Recovery"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Bad value for Action: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r_action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const-string v0, "BadResponse"

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    move-object v0, v1

    .line 53
    goto/16 :goto_0

    .line 59
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 60
    const-string v3, "Recovery"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Bad value for Detail: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r_detail"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const-string v0, "BadResponse"

    iput-object v0, v1, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    move-object v0, v1

    .line 65
    goto/16 :goto_0
.end method
