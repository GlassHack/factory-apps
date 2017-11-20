.class final Lcom/google/android/gms/fitness/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field final c:Landroid/app/PendingIntent;

.field final synthetic d:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/a;->d:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Lcom/google/android/gms/fitness/service/a;->a:I

    .line 227
    iput-object p3, p0, Lcom/google/android/gms/fitness/service/a;->b:Landroid/os/IBinder;

    .line 228
    iput-object p4, p0, Lcom/google/android/gms/fitness/service/a;->c:Landroid/app/PendingIntent;

    .line 229
    return-void
.end method
