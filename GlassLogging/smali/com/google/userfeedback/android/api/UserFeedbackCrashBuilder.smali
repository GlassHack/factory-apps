.class public Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
.super Ljava/lang/Object;
.source "UserFeedbackCrashBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private exceptionClassName:Ljava/lang/String;

.field private exceptionMessage:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private throwClassName:Ljava/lang/String;

.field private throwFileName:Ljava/lang/String;

.field private throwLineNumber:I

.field private throwMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 30
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 34
    return-void
.end method

.method public static newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 8

    .prologue
    .line 76
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_1
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_2
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_3
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_4
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    iget v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwLineNumber:I

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionMessage:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "exceptionClassName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionMessage:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "throwClassName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "throwFileName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "throwLineNumber"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwLineNumber:I

    .line 57
    return-object p0
.end method

.method public setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .param p1, "throwMethodName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    .line 67
    return-object p0
.end method
