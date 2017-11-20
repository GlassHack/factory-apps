.class public Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/aw;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aw;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/aw;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/aw;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->a:I

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->c:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->d:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->e:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 53
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/aw;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;Landroid/os/Parcel;)V

    .line 70
    return-void
.end method
