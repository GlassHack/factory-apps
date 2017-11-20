.class final Lcom/google/android/gms/wearable/service/j;
.super Ljava/util/HashSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 91
    const-string v0, "com.google.android.wearable.app"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/service/j;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "com.google.glass.companion"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/service/j;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
