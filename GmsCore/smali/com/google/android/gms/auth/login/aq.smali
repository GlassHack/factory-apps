.class final Lcom/google/android/gms/auth/login/aq;
.super Lcom/google/android/gms/auth/login/ad;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/MinuteMaidDgService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/MinuteMaidDgService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/auth/login/aq;->a:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    invoke-direct {p0}, Lcom/google/android/gms/auth/login/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string v1, "dg_minutemaid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/auth/login/aq;->a:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    invoke-static {v1}, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->a(Lcom/google/android/gms/auth/login/MinuteMaidDgService;)Lcom/google/android/gms/d/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/d/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
