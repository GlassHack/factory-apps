.class public final Lcom/google/android/gms/common/internal/service/b;
.super Lcom/google/android/gms/common/internal/service/g;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/service/g;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/service/b;->a:Landroid/content/Context;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/service/b;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/service/c;)V
    .locals 2

    .prologue
    .line 27
    const-string v0, "CommonService"

    const-string v1, "clearDefaultAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/service/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/service/c;->a(I)V

    .line 30
    return-void
.end method
