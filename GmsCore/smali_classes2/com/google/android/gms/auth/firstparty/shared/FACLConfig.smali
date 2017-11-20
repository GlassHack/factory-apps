.class public Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

.field private static final h:Ljava/lang/String;


# instance fields
.field final a:I

.field b:Z

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->h:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;ZZZZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->a:I

    .line 50
    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b:Z

    .line 51
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c:Ljava/lang/String;

    .line 52
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d:Z

    .line 53
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e:Z

    .line 54
    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f:Z

    .line 55
    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->g:Z

    .line 56
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZZZ)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->a:I

    .line 66
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b:Z

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c:Ljava/lang/String;

    .line 73
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d:Z

    .line 74
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e:Z

    .line 75
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f:Z

    .line 76
    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->g:Z

    .line 77
    return-void

    .line 71
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->g:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/shared/e;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Landroid/os/Parcel;)V

    .line 85
    return-void
.end method
