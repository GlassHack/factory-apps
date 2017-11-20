.class public Lcom/google/android/gms/location/reporting/Restriction;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_DELETED:I = 0x5

.field public static final ACCOUNT_PURGED:I = 0x6

.field public static final AGE_UNDER_13:I = 0x1

.field public static final AGE_UNKNOWN:I = 0x2

.field public static final DASHER_POLICY:I = 0x3

.field public static final LEGAL_COUNTRY:I = 0x4

.field public static final NONE:I = 0x0

.field public static final UNKNOWN:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)I
    .locals 3
    .param p0, "userRestriction"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ageUnder13"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "ageUnknown"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "dasherPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "legalCountry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "accountDeleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v1, "accountPurged"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user restriction from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getInactiveReason(I)Lcom/google/android/gms/location/reporting/InactiveReason;
    .locals 3
    .param p0, "restriction"    # I

    .prologue
    const/4 v2, 0x7

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "UnknownRestriction"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "AgeUnder13"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "AgeUnknown"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "DasherPolicy"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "LegalCountry"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "AccountDeleted"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v1, "AccountPurged"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isRestricted(I)Z
    .locals 1
    .param p0, "restriction"    # I

    .prologue
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sanitize(I)I
    .locals 0
    .param p0, "userRestriction"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    .end local p0    # "userRestriction":I
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
    .end packed-switch
.end method
