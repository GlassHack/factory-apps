.class public Lcom/google/android/gms/droidguard/DroidGuardClient;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResults(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flowName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResults(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flowName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/droidguard/DroidGuardHandle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flowName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bq;->ad(Ljava/lang/String;)Lcom/google/android/gms/droidguard/DroidGuardHandle;

    move-result-object v0

    return-object v0
.end method
