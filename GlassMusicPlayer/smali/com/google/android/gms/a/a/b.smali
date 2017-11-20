.class final Lcom/google/android/gms/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/a/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/a/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/a/a/b;->b:Lcom/google/android/gms/a/a/a;

    iput-object p2, p0, Lcom/google/android/gms/a/a/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/google/android/gms/auth/firstparty/dataservice/a;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/a;

    iget-object v1, p0, Lcom/google/android/gms/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/a/a/b;->a()Lcom/google/android/gms/auth/firstparty/dataservice/a;

    move-result-object v0

    return-object v0
.end method
