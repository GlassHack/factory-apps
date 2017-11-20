.class public final Lcom/google/android/gms/location/reporting/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 p0, 0x63

    :goto_1
    :pswitch_0
    return p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Undefined"

    goto :goto_0

    :pswitch_1
    const-string v0, "Ambiguous"

    goto :goto_0

    :pswitch_2
    const-string v0, "Off"

    goto :goto_0

    :pswitch_3
    const-string v0, "On"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
