.class public final Lcom/google/android/maps/driveabout/nav/an;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 42
    const-string v0, ""

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "Driving"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "Walking"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "Bicycling"

    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "Transit"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
