.class final Lcom/google/android/gms/common/service/a;
.super Lcom/google/android/gms/common/service/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/service/AccountService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/service/AccountService;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/common/service/a;->a:Lcom/google/android/gms/common/service/AccountService;

    invoke-direct {p0}, Lcom/google/android/gms/common/service/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/service/AccountService;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/service/a;-><init>(Lcom/google/android/gms/common/service/AccountService;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/service/a;->a:Lcom/google/android/gms/common/service/AccountService;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
