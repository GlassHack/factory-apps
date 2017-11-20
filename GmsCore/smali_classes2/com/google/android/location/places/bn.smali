.class final Lcom/google/android/location/places/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/aj;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/bm;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/bm;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/location/places/bn;->a:Lcom/google/android/location/places/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/location/places/Subscription;

    check-cast p2, Lcom/google/android/location/places/Subscription;

    invoke-interface {p1}, Lcom/google/android/location/places/Subscription;->c()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/location/places/Subscription;->c()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
