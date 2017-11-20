.class public final Lcom/google/android/location/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    invoke-static {v0, p0}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    .line 61
    iget v0, v0, Lcom/google/android/location/d/f;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
