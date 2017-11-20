.class final Lcom/google/android/gms/wearable/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/ui/a;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/gms/wearable/ui/b;->a:Lcom/google/android/gms/wearable/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 126
    check-cast p1, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    check-cast p2, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    iget-wide v0, p1, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    iget-wide v2, p2, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    iget-wide v2, p2, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
