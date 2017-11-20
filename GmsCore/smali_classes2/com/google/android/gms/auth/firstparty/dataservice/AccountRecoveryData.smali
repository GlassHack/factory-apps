.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->a:I

    .line 172
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->b:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    .line 173
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->c:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->d:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->e:Ljava/lang/String;

    .line 176
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->f:Ljava/lang/String;

    .line 177
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->g:Ljava/lang/String;

    .line 178
    if-nez p8, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    .line 181
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->i:Ljava/lang/String;

    .line 182
    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    .line 183
    return-void

    .line 178
    :cond_0
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;Landroid/os/Parcel;I)V

    .line 199
    return-void
.end method
