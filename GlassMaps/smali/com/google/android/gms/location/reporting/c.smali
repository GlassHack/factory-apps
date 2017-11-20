.class public final Lcom/google/android/gms/location/reporting/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    :goto_0
    move p0, v0

    :pswitch_0
    return p0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
