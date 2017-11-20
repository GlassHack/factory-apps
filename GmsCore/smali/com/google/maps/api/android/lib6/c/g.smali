.class public final Lcom/google/maps/api/android/lib6/c/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/res/Resources;

.field static b:Landroid/content/res/Resources;


# direct methods
.method public static a()Landroid/content/res/Resources;
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/c/g;->a:Landroid/content/res/Resources;

    const-string v1, "Library Resources have not been initialized"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method
