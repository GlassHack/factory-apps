.class public Lcom/google/android/gms/people/PeopleConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/PeopleConstants$AcItemType;,
        Lcom/google/android/gms/people/PeopleConstants$InteractionTypes;,
        Lcom/google/android/gms/people/PeopleConstants$AutocompleteDataSource;,
        Lcom/google/android/gms/people/PeopleConstants$AutocompleteTypes;,
        Lcom/google/android/gms/people/PeopleConstants$DirectoryAccountTypes;,
        Lcom/google/android/gms/people/PeopleConstants$GaiaEdgeType;,
        Lcom/google/android/gms/people/PeopleConstants$ContactsSyncTargets;,
        Lcom/google/android/gms/people/PeopleConstants$TriState;,
        Lcom/google/android/gms/people/PeopleConstants$LastSyncStatus;,
        Lcom/google/android/gms/people/PeopleConstants$DataChangedScopes;,
        Lcom/google/android/gms/people/PeopleConstants$AvatarSizes;,
        Lcom/google/android/gms/people/PeopleConstants$PeopleSearchFields;,
        Lcom/google/android/gms/people/PeopleConstants$PeopleExtraColumnBitmask;,
        Lcom/google/android/gms/people/PeopleConstants$PeopleColumnBitmask;,
        Lcom/google/android/gms/people/PeopleConstants$AvatarOptions;,
        Lcom/google/android/gms/people/PeopleConstants$LoadOwnersSortOrder;,
        Lcom/google/android/gms/people/PeopleConstants$Avatar;,
        Lcom/google/android/gms/people/PeopleConstants$ProfileTypes;,
        Lcom/google/android/gms/people/PeopleConstants$PostalAddressTypes;,
        Lcom/google/android/gms/people/PeopleConstants$EmailTypes;,
        Lcom/google/android/gms/people/PeopleConstants$PhoneTypes;,
        Lcom/google/android/gms/people/PeopleConstants$CircleVisibility;,
        Lcom/google/android/gms/people/PeopleConstants$CircleTypes;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanToTriState(Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkAvatarSizeArgument(ILjava/lang/String;)V
    .locals 1
    .param p0, "avatarSize"    # I
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailTypeFromCp2EmailType(I)I
    .locals 1
    .param p0, "cp2EmailType"    # I

    .prologue
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhoneTypeFromCp2PhoneType(I)I
    .locals 1
    .param p0, "cp2PhoneType"    # I

    .prologue
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static triStateToBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "triState"    # I

    .prologue
    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
