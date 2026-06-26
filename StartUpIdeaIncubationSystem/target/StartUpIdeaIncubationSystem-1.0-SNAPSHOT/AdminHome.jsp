<%-- 
    Document   : AdminHome
    Created on : 12 Sept 2025, 9:36:22 am
    Author     : padol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Startup Spark</title>
    
    <!-- Modern Font Stack (Inter) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --bg-main: #020617;
            --bg-card: #0f172a;
            --border-color: rgba(255, 255, 255, 0.08);
            --text-primary: #f8fafc;
            --text-secondary: #94a3b8;
            --accent-success: #10b981; /* Emerald */
            --accent-primary: #6366f1; /* Indigo */
            --font-main: 'Inter', system-ui, -apple-system, sans-serif;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-color: var(--bg-main);
            color: var(--text-primary);
            font-family: var(--font-main);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
            /* Subtle radial gradient for depth */
            background-image: radial-gradient(circle at 50% -20%, #1e293b 0%, #020617 80%);
        }

        /* --- Success Feedback Header --- */
        .feedback-header {
            text-align: center;
            margin-bottom: 3rem;
            animation: fadeInDown 0.6s ease-out;
        }

        .icon-badge {
            width: 64px;
            height: 64px;
            background: rgba(16, 185, 129, 0.1);
            border: 1px solid rgba(16, 185, 129, 0.2);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            color: var(--accent-success);
        }

        .feedback-header h1 {
            font-size: 2.25rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            margin-bottom: 0.5rem;
        }

        .feedback-header p {
            color: var(--text-secondary);
            font-size: 1.1rem;
        }

        /* --- Action Grid --- */
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            width: 100%;
            max-width: 1000px;
            animation: fadeInUp 0.8s ease-out;
        }

        .action-card {
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            border-radius: 16px;
            padding: 2rem;
            text-decoration: none;
            color: inherit;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .action-card:hover {
            border-color: var(--accent-primary);
            transform: translateY(-5px);
            background: rgba(30, 41, 59, 0.5);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.2);
        }

        .action-card h3 {
            font-size: 1.25rem;
            font-weight: 600;
            color: var(--text-primary);
        }

        .action-card p {
            color: var(--text-secondary);
            font-size: 0.9rem;
            line-height: 1.5;
        }

        .card-footer {
            margin-top: auto;
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--accent-primary);
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        /* --- Animations --- */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive adjustments */
        @media (max-width: 640px) {
            .feedback-header h1 { font-size: 1.75rem; }
            .dashboard-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <header class="feedback-header">
        <div class="icon-badge">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
        </div>
        <h1>Authentication Successful</h1>
        <p>Welcome back, Administrator. What would you like to manage today?</p>
    </header>

    <main class="dashboard-grid">
        <!-- Exact same Controller links, new styling -->
        <a href="StudentListController" class="action-card">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent-primary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            <h3>Registered Students</h3>
            <p>Access the complete directory of student innovators and their account statuses.</p>
            <div class="card-footer">
                Manage Directory <span>→</span>
            </div>
        </a>

        <a href="IdeaListController" class="action-card">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent-primary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg>
            <h3>Innovation Projects</h3>
            <p>Review submitted business ideas, pitch decks, and technical proposals.</p>
            <div class="card-footer">
                Review Submissions <span>→</span>
            </div>
        </a>

        <a href="index.html" class="action-card">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--text-secondary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
            <h3>Return to Hub</h3>
            <p>Exit the management console and return to the main landing page.</p>
            <div class="card-footer" style="color: var(--text-secondary);">
                Main Site <span>→</span>
            </div>
        </a>
    </main>

</body>
</html>