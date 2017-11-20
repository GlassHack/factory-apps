.class final Lcom/google/android/location/fused/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Landroid/app/PendingIntent;

.field public final e:Lcom/google/android/gms/location/h;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLandroid/app/PendingIntent;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    iput-object p1, p0, Lcom/google/android/location/fused/s;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 1631
    iput-boolean p2, p0, Lcom/google/android/location/fused/s;->b:Z

    .line 1632
    iput p4, p0, Lcom/google/android/location/fused/s;->f:I

    .line 1633
    iput-object p3, p0, Lcom/google/android/location/fused/s;->d:Landroid/app/PendingIntent;

    .line 1634
    iput-object v0, p0, Lcom/google/android/location/fused/s;->e:Lcom/google/android/gms/location/h;

    .line 1635
    iput-object v0, p0, Lcom/google/android/location/fused/s;->c:Ljava/lang/String;

    .line 1636
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLcom/google/android/gms/location/h;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    iput-object p1, p0, Lcom/google/android/location/fused/s;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 1648
    iput-boolean p2, p0, Lcom/google/android/location/fused/s;->b:Z

    .line 1649
    iput-object p3, p0, Lcom/google/android/location/fused/s;->e:Lcom/google/android/gms/location/h;

    .line 1650
    iput p4, p0, Lcom/google/android/location/fused/s;->f:I

    .line 1651
    iput-object p5, p0, Lcom/google/android/location/fused/s;->c:Ljava/lang/String;

    .line 1652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/s;->d:Landroid/app/PendingIntent;

    .line 1653
    return-void
.end method
