.class final Lcom/google/android/location/places/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/google/android/gms/location/places/AutocompletePrediction;

.field final synthetic b:Lcom/google/android/location/places/ui/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ae;[Lcom/google/android/gms/location/places/AutocompletePrediction;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/location/places/ui/ah;->b:Lcom/google/android/location/places/ui/ae;

    iput-object p2, p0, Lcom/google/android/location/places/ui/ah;->a:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/location/places/ui/ah;->b:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/location/places/ui/ah;->b:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->d(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ah;->a:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/be;->a([Lcom/google/android/gms/location/places/AutocompletePrediction;)V

    .line 469
    :cond_0
    return-void
.end method
