.class public final Lcom/google/android/gms/common/internal/ClientSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    .line 40
    iput-object p4, p0, Lcom/google/android/gms/common/internal/ClientSettings;->b:Landroid/view/View;

    .line 41
    return-void
.end method
