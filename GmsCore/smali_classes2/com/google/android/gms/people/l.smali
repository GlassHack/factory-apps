.class final Lcom/google/android/gms/people/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/b;
    .locals 7

    .prologue
    .line 117
    check-cast p4, Lcom/google/android/gms/people/n;

    const-string v0, "Must provide valid PeopleOptions!"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/people/internal/l;

    iget v1, p4, Lcom/google/android/gms/people/n;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/people/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
