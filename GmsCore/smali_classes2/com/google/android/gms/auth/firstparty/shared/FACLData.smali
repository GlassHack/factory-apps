.class public Lcom/google/android/gms/auth/firstparty/shared/FACLData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/f;


# instance fields
.field final a:I

.field b:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->a:I

    .line 48
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->b:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 49
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->c:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->d:Z

    .line 51
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->a:I

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->b:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->c:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->e:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->d:Z

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->b:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->d:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/f;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLData;Landroid/os/Parcel;I)V

    .line 72
    return-void
.end method
