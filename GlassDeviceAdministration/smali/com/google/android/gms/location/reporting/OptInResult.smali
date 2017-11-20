.class public Lcom/google/android/gms/location/reporting/OptInResult;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_MISSING:I = 0x2

.field public static final ACCOUNT_NOT_VALID:I = 0x3

.field public static final CAN_NOT_BE_ACTIVATED:I = 0x7

.field public static final COMMUNICATION_FAILURE:I = 0x8

.field public static final REMOTE_EXCEPTION:I = 0x9

.field public static final REPORTING_NOT_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENDER_MISSING:I = 0x4

.field public static final SENDER_NON_GOOGLE:I = 0x6

.field public static final SENDER_NOT_AUTHORIZED:I = 0x5

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize(I)I
    .locals 0
    .param p0, "serviceValue"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    .end local p0    # "serviceValue":I
    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
