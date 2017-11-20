.class final Lcom/google/android/maps/driveabout/location/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/location/ab;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/location/ab;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/ac;->a:Lcom/google/android/maps/driveabout/location/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ac;->a:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/ab;->c()V

    .line 62
    return-void
.end method
