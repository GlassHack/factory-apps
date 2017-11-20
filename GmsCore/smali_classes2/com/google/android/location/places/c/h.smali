.class public final Lcom/google/android/location/places/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/location/places/c/i;

.field final c:Lcom/google/android/location/places/c/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/places/c/i;Lcom/google/android/location/places/c/j;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/location/places/c/h;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/android/location/places/c/h;->b:Lcom/google/android/location/places/c/i;

    .line 44
    iput-object p3, p0, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    .line 45
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/places/c/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p1, v2}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object v0
.end method
